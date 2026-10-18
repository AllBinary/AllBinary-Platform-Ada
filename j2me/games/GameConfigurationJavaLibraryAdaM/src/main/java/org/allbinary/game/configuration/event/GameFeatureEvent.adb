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


package body org.allbinary.game.configuration.event.GameFeatureEvent_Package is

   procedure Initialize_Fields (This : in out GameFeatureEvent'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureEvent'Class; anyType_Param : access Java_Object'Class; whatChanged : Unbounded_String) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.whatChanged := whatChanged;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; whatChanged : Unbounded_String) return GameFeatureEvent_Access is
      This : constant GameFeatureEvent_Access := new GameFeatureEvent;
   begin
      GameFeatureEvent_Package.Initialize (This.all, anyType_Param, whatChanged);
      return This;
   end Create;

   function getWhatChanged (This : in out GameFeatureEvent) return Unbounded_String is
   begin
        return This.whatChanged;
   end getWhatChanged;

   function getGameOption (This : in out GameFeatureEvent) return Java_Object_Access is
   begin
        return GameFeatureEvent'Class (This).getSource;
   end getGameOption;

end org.allbinary.game.configuration.event.GameFeatureEvent_Package;


