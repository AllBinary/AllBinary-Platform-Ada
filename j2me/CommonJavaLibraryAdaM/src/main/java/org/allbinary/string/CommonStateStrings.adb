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


package body org.allbinary.string_Id.CommonStateStrings_Package is

   procedure Initialize_Fields (This : in out CommonStateStrings'Class) is
   begin
      null;
      This.CONTEXT := To_Unbounded_String ("Context: ");
      This.FINISH := To_Unbounded_String ("finish");
      This.CREATE := To_Unbounded_String ("onCreate");
      This.START := To_Unbounded_String ("onStart");
      This.RESTART := To_Unbounded_String ("onRestart");
      This.RESUME := To_Unbounded_String ("onResume");
      This.PAUSE := To_Unbounded_String ("onPause");
      This.STOP := To_Unbounded_String ("onStop");
      This.DESTROY := To_Unbounded_String ("onDestroy");
      This.BIND := To_Unbounded_String ("onBind");
      This.ON_SAVE_INSTANCE_STATE := To_Unbounded_String ("onSaveInstanceState");
      This.ON_START_COMMAND := To_Unbounded_String ("onStartCommand");
   end Initialize_Fields;

   procedure Initialize (This : in out CommonStateStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommonStateStrings_Access is
      This : constant CommonStateStrings_Access := new CommonStateStrings;
   begin
      CommonStateStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommonStateStrings_Access is
   begin
        return CommonStateStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := CommonStateStrings_Package.Create;

end org.allbinary.string_Id.CommonStateStrings_Package;


