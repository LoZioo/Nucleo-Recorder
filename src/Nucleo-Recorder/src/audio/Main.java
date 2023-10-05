package audio;
import java.io.*;
import com.fazecast.jSerialComm.*;

public class Main {
	public static void main(String[] args) throws Exception {
		//args=new String[2];
		//args[0]="prova.wav";
		//args[1]="0.05";
		
		if(args.length<2) {
			System.out.println("Uso: java -jar Nucleo-Recorder.jar <nome_file.wav> <durata>");
			return;
		}
		
		final int sampleRate=16000, depth=16, baudRate=1000000;
		double durata=Double.parseDouble(args[1]);
		final String nomeFile=args[0];
		
		int m, s;
		m=(int)Math.floor(durata);
		s=(int)((durata-m)*100);
		durata=(m*60)+s;
		
		int[] samples=new int[(int)Math.ceil(sampleRate*durata)];
		
		int n;
		String str;
		
		WavAudio file=new WavAudio(sampleRate,depth,durata);
		SerialPort[] serials=SerialPort.getCommPorts();
		SerialPort serial;
		BufferedReader in=new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("Seleziona la porta del dispositivo:");
		do {
			for(int i=0;i<serials.length;i++)
				System.out.printf("%d) %s\n",i,serials[i].getDescriptivePortName());
			System.out.print("\n>: [0] ");
			
			str=in.readLine();
			if(str.equals(""))
				str="0";
			n=Integer.parseInt(str);
			
			if(!(n>=0 && n<serials.length))
				System.out.printf("\nSeleziona una porta da 0 a %d:\n",serials.length-1);
		} while(!(n>=0 && n<serials.length));
		serial=serials[n];
		
		serial.setComPortTimeouts(SerialPort.TIMEOUT_READ_BLOCKING,100,100);
		serial.setComPortParameters(baudRate,8,SerialPort.ONE_STOP_BIT,SerialPort.NO_PARITY);
		serial.openPort();
		System.out.printf("\nPorta \"%s\" aperta\n",serial.getDescriptivePortName());
		System.out.println("Premi invio per iniziare...");
		in.read();
		
		byte[] buffer=new byte[100];	//Non piu' di 12000 su windows: il buffer della seriale satura; su Linux satura a 4096.
		int k=0;
		
		n=serial.bytesAvailable();
		if(n>0)
			serial.readBytes(new byte[n],n);	//Svuoto il buffer
		
		while(k<samples.length) {
			while(serial.bytesAvailable()<buffer.length);
			
			n=serial.bytesAvailable();
			System.out.printf("%d disponibili, ",n);
			
			serial.readBytes(buffer,buffer.length);	//Acquisizione campioni
			
			int j=0;
			while(j<buffer.length-1 && k<samples.length)
				if(buffer[j]<0) {
					samples[k]=(buffer[j] & ~(byte)(1<<7)) << 6;
					j++;
					samples[k] |= buffer[j];
					j++;
					k++;
				}
				else
					j++;
			
			System.out.printf("%d acquisiti, %d attesi...\r",k,samples.length);
		}
		
		for(int i=0;i<samples.length;i++) {	//Normalizzazione ed applicazione effetti vari...
			samples[i]=(int)Math.round(mapf(samples[i],0,4095,-32768,32767));
		}
		
		file.newFile(nomeFile);
		file.writeSamples(samples);
		System.out.printf("\n%d campioni scritti su %s!\n",samples.length,nomeFile);
		
		serial.closePort();
		file.close();
	}
	
	public static double mapf(double x, double in_min, double in_max, double out_min, double out_max){
		return (x-in_min)*(out_max-out_min)/(in_max-in_min)+out_min;
	}
}
