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


package body org.allbinary.logic.communication.log.TestRemoteLogUtil_Package is

   procedure Initialize_Fields (This : in out TestRemoteLogUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TestRemoteLogUtil'Class) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        Globals_Package.getInstance.init (This.all'Tag.getClassLoader, TestRemoteLogUtil_Package.PATH);
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("Test"), To_Unbounded_String ("TestClass"), Java_New_Exception ("Exception", To_Unbounded_String ("Pretend Exception")));
   end Initialize;

   function Create return TestRemoteLogUtil_Access is
      This : constant TestRemoteLogUtil_Access := new TestRemoteLogUtil;
   begin
      TestRemoteLogUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
   begin
        TestRemoteLogUtil_Package.Create;
   end main;

begin
   null;
   PATH := To_Unbounded_String ("G:\mnt\bc\mydev\work\allbinary_src\licensing\data\");

end org.allbinary.logic.communication.log.TestRemoteLogUtil_Package;


