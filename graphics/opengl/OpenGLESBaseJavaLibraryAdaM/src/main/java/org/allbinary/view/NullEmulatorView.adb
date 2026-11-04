-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;

package body org.allbinary.view.NullEmulatorView_Package is

   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   function "=" (Left, Right : Displayable_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype MIDlet_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access;
   function "=" (Left, Right : MIDlet_Access) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array;
   function "=" (Left, Right : MIDlet_Access_Array) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access;
   function "=" (Left, Right : MIDlet_Access_Array_Access) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array;
   function "=" (Left, Right : MIDlet_Access_Array_Access_Array) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MIDlet_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   procedure Initialize_Fields (This : in out NullEmulatorView'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullEmulatorView'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullEmulatorView_Access is
      This : constant NullEmulatorView_Access := new NullEmulatorView;
   begin
      NullEmulatorView_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setMidlet (This : in out NullEmulatorView; midlet_Param : access MIDlet_Package.MIDlet'Class) is
      midlet : constant MIDlet_Access := MIDlet_Access (midlet_Param);
   begin
        null;
   end setMidlet;

   procedure onEmulatorInitComplete (This : in out NullEmulatorView; midletActivity_Param : access Java_Object'Class) is
      midletActivity : constant Java_Object_Access := Java_Object_Access (midletActivity_Param);
   begin
        null;
   end onEmulatorInitComplete;

   procedure onSetDisplayable (This : in out NullEmulatorView; displayable_Param : access Displayable_Package.Displayable'Class) is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        null;
   end onSetDisplayable;

   procedure onEmulatorInitComplete (This : in out NullEmulatorView; Value : Unbounded_String) is
   begin
      NullEmulatorView'Class (This).onEmulatorInitComplete (Java_Box (Value));
   end onEmulatorInitComplete;

begin
   null;
   NULL_EMULATOR_VIEW := NullEmulatorView_Package.Create;

end org.allbinary.view.NullEmulatorView_Package;


