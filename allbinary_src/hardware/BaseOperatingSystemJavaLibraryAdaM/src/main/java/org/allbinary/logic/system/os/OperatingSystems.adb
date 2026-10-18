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



package body org.allbinary.logic.system.os.OperatingSystems_Package is

   procedure Initialize_Fields (This : in out OperatingSystems'Class) is
   begin
      null;
      This.LINUX := To_Unbounded_String ("Linux");
      This.WINDOWS := To_Unbounded_String ("Windows");
      This.SOLARIS := To_Unbounded_String ("Solaris");
      This.WINDOWS2000 := To_Unbounded_String ("Windows 2000");
      This.WINDOWS_NT := To_Unbounded_String ("Windows NT");
      This.WINDOWS_10 := To_Unbounded_String ("Windows 10");
      This.WINDOWS_11 := To_Unbounded_String ("Windows 11");
      This.WINDOWS_VISTA := To_Unbounded_String ("Windows Vista");
      This.WINDOWS_XP := To_Unbounded_String ("Windows XP");
      This.ANDROID := This.LINUX;
      This.HARMONY := To_Unbounded_String ("HarmonyOS");
      This.unknownSpecificOSAllowed := True;
   end Initialize_Fields;


   procedure Initialize (This : in out OperatingSystems'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OperatingSystems_Access is
      This : constant OperatingSystems_Access := new OperatingSystems;
   begin
      OperatingSystems_Package.Initialize (This.all);
      return This;
   end Create;

   function isUnknownSpecificOSAllowed (This : in out OperatingSystems) return Boolean is
   begin
        return This.unknownSpecificOSAllowed;
   end isUnknownSpecificOSAllowed;

   procedure setUnknownSpecificOSAllowed (This : in out OperatingSystems; aUnknownSpecificOSAllowed : Boolean) is
   begin
        This.unknownSpecificOSAllowed := aUnknownSpecificOSAllowed;
   end setUnknownSpecificOSAllowed;

   function getInstance return OperatingSystems_Access is
   begin
        return OperatingSystems_Package.instance;
   end getInstance;

begin
   null;
   instance := OperatingSystems_Package.Create;

end org.allbinary.logic.system.os.OperatingSystems_Package;


