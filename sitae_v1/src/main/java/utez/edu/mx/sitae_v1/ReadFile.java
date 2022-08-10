package utez.edu.mx.sitae_v1;
import java.io.*;

public class ReadFile {
    public String readTxt(String direction){
        String text ="";
        try{
            BufferedReader bf = new BufferedReader(new FileReader(direction));
            String temp = "";
            String bfRead;
            while ((bfRead=bf.readLine())!=null){
                temp = temp + bfRead;
            }
            text = text + bfRead;
        }catch (Exception e){
            System.err.println("No se encontró archivo");
        }
return text;
    }
}
