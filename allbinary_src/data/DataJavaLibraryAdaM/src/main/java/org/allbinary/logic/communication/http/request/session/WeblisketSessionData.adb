--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package is

   procedure Initialize_Fields (This : in out WeblisketSessionData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WeblisketSessionData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WeblisketSessionData_Access is
      This : constant WeblisketSessionData_Access := new WeblisketSessionData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   INVALIDATESESSION := To_Unbounded_String ("SESSION_INVALIDATE_SESSION");
   ATTEMPTS := To_Unbounded_String ("SESSION_ATTEMPTS");
   TIMEOUT := To_Unbounded_String ("SESSION_TIMEOUT");
   REMOVABLEUSERNAME := To_Unbounded_String ("SESSION_REMOVABLE_USER_NAME");
   REMOVABLEPASSWORD := To_Unbounded_String ("SESSION_REMOVABLE_PASSWORD");
   REMOVABLENEWPASSWORD := To_Unbounded_String ("SESSION_REMOVABLE_NEW_PASSWORD");
   REMOVABLEREENTERNEWPASSWORD := To_Unbounded_String ("SESSION_REMOVABLE_REENTER_NEW_PASSWORD");
   AUTHENTICATED := To_Unbounded_String ("SESSION_AUTHENTICATED");

end org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;


