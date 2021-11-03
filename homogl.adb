with Ada.Text_IO; use Ada.Text_IO;

procedure Homogl is
   function Encrypt (Data : String) return String
   is
   begin
      return "Normal";
   end Encrypt;
   function Еncrypt (Data : String) return String
   is
   begin
      return "Malicious";
   end Еncrypt;
begin
   Put_Line (Encrypt ("Input"));
end Homogl;
