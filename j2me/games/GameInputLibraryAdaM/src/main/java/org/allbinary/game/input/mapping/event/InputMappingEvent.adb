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


with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;

package body org.allbinary.game.input.mapping.event.InputMappingEvent_Package is

   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   procedure Initialize_Fields (This : in out InputMappingEvent'Class) is
   begin
      null;
      This.inputToGameKeyMapping := InputToGameKeyMapping_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputMappingEvent'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return InputMappingEvent_Access is
      This : constant InputMappingEvent_Access := new InputMappingEvent;
   begin
      InputMappingEvent_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   procedure setInputToGameKeyMapping (This : in out InputMappingEvent; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      inputToGameKeyMapping : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        This.inputToGameKeyMapping := inputToGameKeyMapping;
   end setInputToGameKeyMapping;

   function getInputToGameKeyMapping (This : in out InputMappingEvent) return InputToGameKeyMapping_Access is
   begin
        return This.inputToGameKeyMapping;
   end getInputToGameKeyMapping;

end org.allbinary.game.input.mapping.event.InputMappingEvent_Package;


