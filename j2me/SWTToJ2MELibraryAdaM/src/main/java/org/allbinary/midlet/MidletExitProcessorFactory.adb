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


with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;
with org.allbinary.AppletUtil_Package; use org.allbinary.AppletUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.midlet.MidletExitProcessor_Package; use org.allbinary.midlet.MidletExitProcessor_Package;
with org.allbinary.midlet.MidletExitProcessor_Package;

package body org.allbinary.midlet.MidletExitProcessorFactory_Package is

   package AppletUtil_Package renames Standard.org.allbinary.AppletUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
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
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   function "=" (Left, Right : Processor_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   function "=" (Left, Right : Processor_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   function "=" (Left, Right : Processor_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   procedure Initialize_Fields (This : in out MidletExitProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MidletExitProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MidletExitProcessorFactory_Access is
      This : constant MidletExitProcessorFactory_Access := new MidletExitProcessorFactory;
   begin
      MidletExitProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MidletExitProcessorFactory_Access is
   begin
        return MidletExitProcessorFactory_Package.instance;
   end getInstance;

   function getExitInstance (This : in out MidletExitProcessorFactory; midlet_Param : access MIDlet_Package.MIDlet'Class) return Processor_Access is
      midlet : constant MIDlet_Access := MIDlet_Access (midlet_Param);
   begin
        if (AppletUtil_Package.isAppletLoader (midlet)) or else (J2MEUtil_Package.isJ2ME) then
            return Processor_Package.getInstance;
        else
            return Processor_Access (MidletExitProcessor_Package.Create (midlet));
        end if;
   end getExitInstance;

   procedure getExitInstance (This : in out MidletExitProcessorFactory; midlet_Param : access MIDlet_Package.MIDlet'Class) is
      Java_Result : constant Processor_Access := MidletExitProcessorFactory'Class (This).getExitInstance (midlet_Param => midlet_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExitInstance;

begin
   null;
   instance := MidletExitProcessorFactory_Package.Create;

end org.allbinary.midlet.MidletExitProcessorFactory_Package;


