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


with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.midlet.DemoGameMidletState_Package; use org.allbinary.game.midlet.DemoGameMidletState_Package;
with org.allbinary.game.midlet.DemoGameMidletState_Package;

package body org.allbinary.game.midlet.DemoGameMidletEvent_Package is

   subtype DemoGameMidletState_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access;
   function "=" (Left, Right : DemoGameMidletState_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array;
   function "=" (Left, Right : DemoGameMidletState_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletState_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   procedure Initialize_Fields (This : in out DemoGameMidletEvent'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameMidletEvent'Class; anyType_Param : access Java_Object'Class; demoGameMidletState_Param : access DemoGameMidletState_Package.DemoGameMidletState'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      demoGameMidletState : constant DemoGameMidletState_Access := DemoGameMidletState_Access (demoGameMidletState_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.demoGameMidletState := demoGameMidletState;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; demoGameMidletState_Param : access DemoGameMidletState_Package.DemoGameMidletState'Class) return DemoGameMidletEvent_Access is
      This : constant DemoGameMidletEvent_Access := new DemoGameMidletEvent;
   begin
      DemoGameMidletEvent_Package.Initialize (This.all, anyType_Param, demoGameMidletState_Param);
      return This;
   end Create;

   procedure init (This : in out DemoGameMidletEvent; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        DemoGameMidletEvent'Class (This).setSource (anyType);
   end init;

   procedure setDemoGameMidletState (This : in out DemoGameMidletEvent; demoGameMidletState_Param : access DemoGameMidletState_Package.DemoGameMidletState'Class) is
      demoGameMidletState : constant DemoGameMidletState_Access := DemoGameMidletState_Access (demoGameMidletState_Param);
   begin
        This.demoGameMidletState := demoGameMidletState;
   end setDemoGameMidletState;

   function getDemoGameMidletState (This : in out DemoGameMidletEvent) return DemoGameMidletState_Access is
   begin
        return This.demoGameMidletState;
   end getDemoGameMidletState;

   procedure init (This : in out DemoGameMidletEvent; Value : Unbounded_String) is
   begin
      DemoGameMidletEvent'Class (This).init (Java_Box (Value));
   end init;

end org.allbinary.game.midlet.DemoGameMidletEvent_Package;


