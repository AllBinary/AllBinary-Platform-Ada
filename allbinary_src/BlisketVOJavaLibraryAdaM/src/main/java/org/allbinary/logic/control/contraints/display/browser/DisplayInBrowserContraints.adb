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


package body org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package is

   procedure Initialize_Fields (This : in out DisplayInBrowserContraints'Class) is
   begin
      null;
      This.frameable := False;
      This.mountable := False;
      This.quickFrameable := False;
      This.mountedLink := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out DisplayInBrowserContraints'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return DisplayInBrowserContraints_Access is
      This : constant DisplayInBrowserContraints_Access := new DisplayInBrowserContraints;
   begin
      DisplayInBrowserContraints_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   function isMountable (This : in out DisplayInBrowserContraints) return Boolean is
   begin
        return This.mountable;
   end isMountable;

   procedure setMountable (This : in out DisplayInBrowserContraints; mountable : Boolean) is
   begin
        This.mountable := mountable;
   end setMountable;

   function isFrameable (This : in out DisplayInBrowserContraints) return Boolean is
   begin
        return This.frameable;
   end isFrameable;

   procedure setFrameable (This : in out DisplayInBrowserContraints; frameable : Boolean) is
   begin
        This.frameable := frameable;
   end setFrameable;

   function isQuickFrameable (This : in out DisplayInBrowserContraints) return Boolean is
   begin
        return This.quickFrameable;
   end isQuickFrameable;

   procedure setQuickFrameable (This : in out DisplayInBrowserContraints; quickFrameable : Boolean) is
   begin
        This.quickFrameable := quickFrameable;
   end setQuickFrameable;

   function getMountedLink (This : in out DisplayInBrowserContraints) return Unbounded_String is
   begin
        return This.mountedLink;
   end getMountedLink;

   procedure setMountedLink (This : in out DisplayInBrowserContraints; mountedLink : Unbounded_String) is
   begin
        This.mountedLink := mountedLink;
   end setMountedLink;

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;


