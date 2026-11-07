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


with org.allbinary.game.input.analog.AnalogLocationInput_Package; use org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.game.input.analog.AnalogLocationInputFactory_Package; use org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package; use org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.android.input.motion.SingleAnalogControllerVisitor_Package is

   package AnalogLocationInput_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInput_Package;
   package AnalogLocationInputFactory_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AnalogLocationInputProcessor_Access is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access;
   function "=" (Left, Right : AnalogLocationInputProcessor_Access) return Boolean renames org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References."=";
   subtype AnalogLocationInputProcessor_Access_Array is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array;
   function "=" (Left, Right : AnalogLocationInputProcessor_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References."=";
   subtype AnalogLocationInputProcessor_Access_Array_Access is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References."=";
   subtype AnalogLocationInputProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogLocationInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References."=";
   subtype AnalogLocationInputProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out SingleAnalogControllerVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SingleAnalogControllerVisitor'Class; playerInputId : Integer) is
   begin
      AnalogControllerVisitor_Package.Initialize (This);
      Initialize_Fields (This);
        This.playerInputId := playerInputId;
   end Initialize;

   function Create (playerInputId : Integer) return SingleAnalogControllerVisitor_Access is
      This : constant SingleAnalogControllerVisitor_Access := new SingleAnalogControllerVisitor;
   begin
      SingleAnalogControllerVisitor_Package.Initialize (This.all, playerInputId);
      return This;
   end Create;

   procedure process (This : in out SingleAnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor_Package.AnalogLocationInputProcessor'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      analogLocationInputProcessor : constant AnalogLocationInputProcessor_Access := AnalogLocationInputProcessor_Access (analogLocationInputProcessor_Param);
      analogLocationInput : AnalogLocationInput_Access;
   begin
        analogLocationInput := AnalogLocationInputFactory_Package.getInstance.getInstanceForPlayer (This.playerInputId);
        analogLocationInputProcessor.process (allbinaryLayerManager, analogLocationInput);
   end process;

end org.allbinary.android.input.motion.SingleAnalogControllerVisitor_Package;


