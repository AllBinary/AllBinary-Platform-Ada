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


package body org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package is

   procedure Initialize_Fields (This : in out MyGraphicItemEventSource'Class) is
   begin
      null;
      
      
      This.angle := 0.0;
   end Initialize_Fields;


   procedure Initialize (This : in out MyGraphicItemEventSource'Class; command : Unbounded_String; treeNode : MutableTreeNode_Access) is
   begin
      Initialize_Fields (This);
        This.command := command;
        This.treeNode := treeNode;
   end Initialize;

   function Create (command : Unbounded_String; treeNode : MutableTreeNode_Access) return MyGraphicItemEventSource_Access is
      This : constant MyGraphicItemEventSource_Access := new MyGraphicItemEventSource;
   begin
      Initialize (This.all, command, treeNode);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out MyGraphicItemEventSource'Class; command : Unbounded_String; angle : Long_Float; treeNode : MutableTreeNode_Access) is
   begin
      Initialize_Fields (This);
        This.command := command;
        This.treeNode := treeNode;
        This.setAngle (angle);
   end Initialize;

   function Create (command : Unbounded_String; angle : Long_Float; treeNode : MutableTreeNode_Access) return MyGraphicItemEventSource_Access is
      This : constant MyGraphicItemEventSource_Access := new MyGraphicItemEventSource;
   begin
      Initialize (This.all, command, angle, treeNode);
      return This;
   end Create;

   function getCommand (This : in out MyGraphicItemEventSource) return Unbounded_String is
   begin
        return This.command;
   end getCommand;

   function getTreeNode (This : in out MyGraphicItemEventSource) return MutableTreeNode_Access is
   begin
        return This.treeNode;
   end getTreeNode;

   function getAngle (This : in out MyGraphicItemEventSource) return Long_Float is
   begin
        return This.angle;
   end getAngle;

   procedure setAngle (This : in out MyGraphicItemEventSource; angle : Long_Float) is
   begin
        This.angle := angle;
   end setAngle;

   procedure getCommand (This : in out MyGraphicItemEventSource) is
      Java_Result : constant Unbounded_String := MyGraphicItemEventSource'Class (This).getCommand;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommand;

   procedure getTreeNode (This : in out MyGraphicItemEventSource) is
      Java_Result : constant MutableTreeNode_Access := MyGraphicItemEventSource'Class (This).getTreeNode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTreeNode;

   procedure getAngle (This : in out MyGraphicItemEventSource) is
      Java_Result : constant Long_Float := MyGraphicItemEventSource'Class (This).getAngle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngle;

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;


