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


package body org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package is

   procedure Initialize_Fields (This : in out MyGraphicItemEvent'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MyGraphicItemEvent'Class; source : Java_Object_Access) is
   begin
        EventObject_Package.Initialize (This, source);
   end Initialize;

   function Create (source : Java_Object_Access) return MyGraphicItemEvent_Access is
      This : constant MyGraphicItemEvent_Access := new MyGraphicItemEvent;
   begin
      Initialize (This.all, source);
      return This;
   end Create;

   function getSource (This : in out MyGraphicItemEvent) return Java_Object_Access is
   begin
        return EventObject (This).getSource;
   end getSource;

   function toString (This : in out MyGraphicItemEvent) return Unbounded_String is
   begin
        return EventObject (This).toString;
   end toString;

   function getCommand (This : in out MyGraphicItemEvent) return Unbounded_String is
      myEventSource : MyGraphicItemEventSource_Access;
   begin
        myEventSource := MyGraphicItemEventSource_Access (This.getSource);
        return myEventSource.getCommand;
   end getCommand;

   function getTreeNode (This : in out MyGraphicItemEvent) return MutableTreeNode_Access is
      myEventSource : MyGraphicItemEventSource_Access;
   begin
        myEventSource := MyGraphicItemEventSource_Access (This.getSource);
        return myEventSource.getTreeNode;
   end getTreeNode;

   function getAngle (This : in out MyGraphicItemEvent) return Long_Float is
      myEventSource : MyGraphicItemEventSource_Access;
   begin
        myEventSource := MyGraphicItemEventSource_Access (This.getSource);
        return myEventSource.getAngle;
   end getAngle;

   procedure getSource (This : in out MyGraphicItemEvent) is
      Java_Result : constant Java_Object_Access := MyGraphicItemEvent'Class (This).getSource;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSource;

   procedure toString (This : in out MyGraphicItemEvent) is
      Java_Result : constant Unbounded_String := MyGraphicItemEvent'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getCommand (This : in out MyGraphicItemEvent) is
      Java_Result : constant Unbounded_String := MyGraphicItemEvent'Class (This).getCommand;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommand;

   procedure getTreeNode (This : in out MyGraphicItemEvent) is
      Java_Result : constant MutableTreeNode_Access := MyGraphicItemEvent'Class (This).getTreeNode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTreeNode;

   procedure getAngle (This : in out MyGraphicItemEvent) is
      Java_Result : constant Long_Float := MyGraphicItemEvent'Class (This).getAngle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngle;

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;


