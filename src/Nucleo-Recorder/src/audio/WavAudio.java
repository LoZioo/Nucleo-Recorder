package audio;
import java.io.*;

public class WavAudio{
	int sampleRate, depth;
	double duration;
	long samples;
	WavFile file;
	
	public WavAudio(int sampleRate, int depth, double duration) {
		this.sampleRate=sampleRate;
		this.depth=depth;
		this.duration=duration;
		samples=(long)(duration*sampleRate);
	}
	
	public int newFile(String path) {
		try {
			file=WavFile.newWavFile(new File(path),1,samples,depth,sampleRate);
			return 0;
		}
		catch(Exception e) {
			System.err.println(e);
			return -1;
		}
	}
	
	public int open(String path) {
		try {
			file=WavFile.openWavFile(new File(path));
			return 0;
		}
		catch(Exception e) {
			System.err.println(e);
			return -1;
		}
	}
	
	public int close() {
		try {
			file.close();
			return 0;
		}
		catch(Exception e) {
			System.err.println(e);
			return -1;
		}
	}
	
	public int writeSamples(int[] buffer) {
		try {
			file.writeFrames(buffer,buffer.length);
			return 0;
		}
		catch(Exception e){
			System.err.println(e);
			return -1;
		}
	}
	
	public int readSamples(int[] arr) {
		try {
			arr=new int[(int)file.getNumFrames()];
			file.readFrames(arr,arr.length);
			return 0;
		}
		catch(Exception e){
			System.err.println(e);
			return -1;
		}
	}
}