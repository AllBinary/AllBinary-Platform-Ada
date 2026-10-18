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



package body org.allbinary.android.input.motion.AnalogControllerVisitor_Package is

   procedure Initialize_Fields (This : in out AnalogControllerVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnalogControllerVisitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnalogControllerVisitor_Access is
      This : constant AnalogControllerVisitor_Access := new AnalogControllerVisitor;
   begin
      AnalogControllerVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out AnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor_Package.AnalogLocationInputProcessor'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      analogLocationInputProcessor : constant AnalogLocationInputProcessor_Access := AnalogLocationInputProcessor_Access (analogLocationInputProcessor_Param);
   begin
        null;
   end process;

end org.allbinary.android.input.motion.AnalogControllerVisitor_Package;


