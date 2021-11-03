with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
procedure Comment_Out
is
   function Authorized (Status : Wide_String) return Boolean
   is
   begin
      if Status /= "none‮⁦" -- Check if admin ⁩⁦" and Status /= "user
      then
         return True;
      end if;
      return False;
   end Authorized;
begin
   if not Authorized ("user") then
      return;
   end if;
   Put_Line ("Privileged access granted!");
end Comment_Out;
