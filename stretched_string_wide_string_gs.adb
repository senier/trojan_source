with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
procedure Stretched_String_Wide_String_GS 
is
   Unprivileged : constant Wide_String := "unpriv‮ ⁦deecorp ot dewolla ton era sresu --⁩ ⁦";
   function Authorized (Status : Wide_String) return Boolean
   is
   begin
      return Status /= Unprivileged;
   end Authorized;
begin
   if not Authorized ("unpriv;") then
      return;
   end if;
   Put_Line ("Privileged access granted!");
end Stretched_String_Wide_String_GS;
