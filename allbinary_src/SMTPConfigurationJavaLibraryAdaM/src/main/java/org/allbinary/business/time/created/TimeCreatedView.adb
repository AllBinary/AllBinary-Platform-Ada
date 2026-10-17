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


package body org.allbinary.business.time.created.TimeCreatedView_Package is

   procedure Initialize_Fields (This : in out TimeCreatedView'Class) is
   begin
      null;
      This.timeCreated := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeCreatedView'Class; timeCreated : TimeCreated_Access) is
   begin
      Initialize_Fields (This);
        This.setTimeCreated (timeCreated);
   end Initialize;

   function Create (timeCreated : TimeCreated_Access) return TimeCreatedView_Access is
      This : constant TimeCreatedView_Access := new TimeCreatedView;
   begin
      TimeCreatedView_Package.Initialize (This.all, timeCreated);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TimeCreatedView'Class; node : Node_Access) is
   begin
      Initialize_Fields (This);
        This.setTimeCreated (TimeCreated_Package.Create (DomNodeHelper_Package.getTextNodeValue (node)));
   end Initialize;

   function Create (node : Node_Access) return TimeCreatedView_Access is
      This : constant TimeCreatedView_Access := new TimeCreatedView;
   begin
      TimeCreatedView_Package.Initialize (This.all, node);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TimeCreatedView; document : Document_Access) return Node_Access is
   begin
        return ModDomHelper_Package.createTextNode (document, EntryData_Package.getInstance.TIMECREATED, This.getTimeCreated.toString);
   end toXmlNode;

   function getTimeCreated (This : in out TimeCreatedView) return TimeCreated_Access is
   begin
        return This.timeCreated;
   end getTimeCreated;

   procedure setTimeCreated (This : in out TimeCreatedView; timeCreated : TimeCreated_Access) is
   begin
        This.timeCreated := timeCreated;
   end setTimeCreated;

   procedure toXmlNode (This : in out TimeCreatedView; document : Document_Access) is
      Java_Result : constant Node_Access := TimeCreatedView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.time.created.TimeCreatedView_Package;


