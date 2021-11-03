with Ada.Text_IO; use Ada.Text_IO;
procedure Main_Forged_String
is
   Unprivileged : constant String := "unpriv‮ ⁦ -- users are not allowed to proceed⁩ ⁦";
   function Authorized (Status : String) return Boolean
   is
   begin
      return Status /= Unprivileged;
   end Authorized;
begin
   if not Authorized ("unpriv") then
      return;
   end if;
   Put_Line ("Privileged access granted!");
end Main_Forged_String;
