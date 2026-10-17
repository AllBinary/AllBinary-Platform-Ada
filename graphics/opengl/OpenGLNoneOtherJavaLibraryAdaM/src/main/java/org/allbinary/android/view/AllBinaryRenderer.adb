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


package body org.allbinary.android.view.AllBinaryRenderer_Package is

   procedure Initialize_Fields (This : in out AllBinaryRenderer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryRenderer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryRenderer_Access is
      This : constant AllBinaryRenderer_Access := new AllBinaryRenderer;
   begin
      AllBinaryRenderer_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AllBinaryRenderer_Access is
   begin
        return AllBinaryRenderer_Package.instance;
   end getInstance;

   procedure setRunnable (This : in out AllBinaryRenderer; runnable_Param : access Runnable_Package.Runnable'Class) is
      runnable : constant Runnable_Access := Runnable_Access (runnable_Param);
   begin
        null;
   end setRunnable;

   procedure clearRunnable (This : in out AllBinaryRenderer) is
   begin
        null;
   end clearRunnable;

begin
   null;
   instance := AllBinaryRenderer_Package.Create;

end org.allbinary.android.view.AllBinaryRenderer_Package;


