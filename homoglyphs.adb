pragma Wide_Character_Encoding (UTF8); 

with Ada.Text_IO; use Ada.Text_IO;

procedure Homoglyphs is
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
   Put_Line (Еncrypt ("Input"));
end Homoglyphs;
