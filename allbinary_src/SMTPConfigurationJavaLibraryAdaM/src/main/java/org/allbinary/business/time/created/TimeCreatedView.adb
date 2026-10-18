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


with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;

package body org.allbinary.business.time.created.TimeCreatedView_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out TimeCreatedView'Class) is
   begin
      null;
      This.timeCreated := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeCreatedView'Class; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) is
      timeCreated : constant TimeCreated_Access := TimeCreated_Access (timeCreated_Param);
   begin
      Initialize_Fields (This);
        TimeCreatedView'Class (This).setTimeCreated (timeCreated);
   end Initialize;

   function Create (timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) return TimeCreatedView_Access is
      This : constant TimeCreatedView_Access := new TimeCreatedView;
   begin
      TimeCreatedView_Package.Initialize (This.all, timeCreated_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TimeCreatedView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        TimeCreatedView'Class (This).setTimeCreated (TimeCreated_Package.Create (DomNodeHelper_Package.getTextNodeValue (node)));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return TimeCreatedView_Access is
      This : constant TimeCreatedView_Access := new TimeCreatedView;
   begin
      TimeCreatedView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TimeCreatedView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createTextNode (document, EntryData_Package.getInstance.TIMECREATED, TimeCreatedView'Class (This).getTimeCreated.toString);
   end toXmlNode;

   function getTimeCreated (This : in out TimeCreatedView) return TimeCreated_Access is
   begin
        return This.timeCreated;
   end getTimeCreated;

   procedure setTimeCreated (This : in out TimeCreatedView; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) is
      timeCreated : constant TimeCreated_Access := TimeCreated_Access (timeCreated_Param);
   begin
        This.timeCreated := timeCreated;
   end setTimeCreated;

   procedure toXmlNode (This : in out TimeCreatedView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TimeCreatedView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.time.created.TimeCreatedView_Package;


