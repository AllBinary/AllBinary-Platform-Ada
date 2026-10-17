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


package body org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package is

   procedure Initialize_Fields (This : in out AllAnalogControllerVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllAnalogControllerVisitor'Class) is
   begin
      AnalogControllerVisitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AllAnalogControllerVisitor_Access is
      This : constant AllAnalogControllerVisitor_Access := new AllAnalogControllerVisitor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out AllAnalogControllerVisitor; allbinaryLayerManager : AllBinaryLayerManager_Access; analogLocationInputProcessor : AnalogLocationInputProcessor_Access) is
      analogLocationInputList : BasicArrayList_Access;
      analogLocationInput : AnalogLocationInput_Access;
      index : Integer;
   begin
        analogLocationInputList := AnalogLocationInputFactory_Package.getInstance.getList;
        analogLocationInput := null;
        for index in reverse 0 .. (analogLocationInputList.size) - (1) loop
            analogLocationInput := AnalogLocationInput_Access (analogLocationInputList.get (index));
            analogLocationInputProcessor.process (allbinaryLayerManager, analogLocationInput);
        end loop;
   end process;

end org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package;


