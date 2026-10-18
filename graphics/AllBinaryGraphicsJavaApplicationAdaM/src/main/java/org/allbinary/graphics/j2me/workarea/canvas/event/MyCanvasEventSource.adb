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



package body org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package is

   procedure Initialize_Fields (This : in out MyCanvasEventSource'Class) is
   begin
      null;
      
      
      This.angle := 0.0;
   end Initialize_Fields;


   procedure Initialize (This : in out MyCanvasEventSource'Class; command : Unbounded_String; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) is
      treeNode : constant MutableTreeNode_Access := MutableTreeNode_Access (treeNode_Param);
   begin
      Initialize_Fields (This);
        This.command := command;
        This.treeNode := treeNode;
   end Initialize;

   function Create (command : Unbounded_String; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) return MyCanvasEventSource_Access is
      This : constant MyCanvasEventSource_Access := new MyCanvasEventSource;
   begin
      MyCanvasEventSource_Package.Initialize (This.all, command, treeNode_Param);
      return This;
   end Create;

   procedure Initialize (This : in out MyCanvasEventSource'Class; command : Unbounded_String; angle : Long_Float; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) is
      treeNode : constant MutableTreeNode_Access := MutableTreeNode_Access (treeNode_Param);
   begin
      Initialize_Fields (This);
        This.command := command;
        This.treeNode := treeNode;
        MyCanvasEventSource'Class (This).setAngle (angle);
   end Initialize;

   function Create (command : Unbounded_String; angle : Long_Float; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) return MyCanvasEventSource_Access is
      This : constant MyCanvasEventSource_Access := new MyCanvasEventSource;
   begin
      MyCanvasEventSource_Package.Initialize (This.all, command, angle, treeNode_Param);
      return This;
   end Create;

   function getCommand (This : in out MyCanvasEventSource) return Unbounded_String is
   begin
        return This.command;
   end getCommand;

   function getTreeNode (This : in out MyCanvasEventSource) return MutableTreeNode_Access is
   begin
        return This.treeNode;
   end getTreeNode;

   function getAngle (This : in out MyCanvasEventSource) return Long_Float is
   begin
        return This.angle;
   end getAngle;

   procedure setAngle (This : in out MyCanvasEventSource; angle : Long_Float) is
   begin
        This.angle := angle;
   end setAngle;

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;


