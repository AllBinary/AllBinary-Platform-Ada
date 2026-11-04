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



package body org.allbinary.game.NullIntermissionEnableListener_Package is

   procedure Initialize_Fields (This : in out NullIntermissionEnableListener'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return IntermissionEnableListenerInterface_Access is
   begin
        return IntermissionEnableListenerInterface_Access (NullIntermissionEnableListener_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out NullIntermissionEnableListener'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullIntermissionEnableListener_Access is
      This : constant NullIntermissionEnableListener_Access := new NullIntermissionEnableListener;
   begin
      NullIntermissionEnableListener_Package.Initialize (This.all);
      return This;
   end Create;

   procedure notifyIntermission (This : in out NullIntermissionEnableListener; enable : Boolean) is
   begin
        null;
   end notifyIntermission;

begin
   null;
   SINGLETON := IntermissionEnableListenerInterface_Access (NullIntermissionEnableListener_Package.Create);

end org.allbinary.game.NullIntermissionEnableListener_Package;


