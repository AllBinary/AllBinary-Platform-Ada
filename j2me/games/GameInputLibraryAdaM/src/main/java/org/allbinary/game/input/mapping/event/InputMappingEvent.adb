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


package body org.allbinary.game.input.mapping.event.InputMappingEvent_Package is

   procedure Initialize_Fields (This : in out InputMappingEvent'Class) is
   begin
      null;
      This.inputToGameKeyMapping := InputToGameKeyMapping_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputMappingEvent'Class; anyType : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType : Java_Object_Access) return InputMappingEvent_Access is
      This : constant InputMappingEvent_Access := new InputMappingEvent;
   begin
      InputMappingEvent_Package.Initialize (This.all, anyType);
      return This;
   end Create;

   procedure setInputToGameKeyMapping (This : in out InputMappingEvent; inputToGameKeyMapping : InputToGameKeyMapping_Access) is
   begin
        This.inputToGameKeyMapping := inputToGameKeyMapping;
   end setInputToGameKeyMapping;

   function getInputToGameKeyMapping (This : in out InputMappingEvent) return InputToGameKeyMapping_Access is
   begin
        return This.inputToGameKeyMapping;
   end getInputToGameKeyMapping;

end org.allbinary.game.input.mapping.event.InputMappingEvent_Package;


