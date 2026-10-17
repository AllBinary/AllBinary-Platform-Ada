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


package body org.allbinary.business.time.modified.TimeLastModifiedView_Package is

   procedure Initialize_Fields (This : in out TimeLastModifiedView'Class) is
   begin
      null;
      This.timeLastModified := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeLastModifiedView'Class; timeLastModified_Param : access TimeLastModified'Class) is
      timeLastModified : TimeLastModified_Access := TimeLastModified_Access (timeLastModified_Param);
   begin
      Initialize_Fields (This);
        This.setTimeLastModified (timeLastModified);
   end Initialize;

   function Create (timeLastModified_Param : access TimeLastModified'Class) return TimeLastModifiedView_Access is
      This : constant TimeLastModifiedView_Access := new TimeLastModifiedView;
   begin
      TimeLastModifiedView_Package.Initialize (This.all, timeLastModified_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TimeLastModifiedView'Class; node_Param : access Node'Class) is
      node : Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        This.setTimeLastModified (TimeLastModified_Package.Create (DomNodeHelper_Package.getTextNodeValue (node)));
   end Initialize;

   function Create (node_Param : access Node'Class) return TimeLastModifiedView_Access is
      This : constant TimeLastModifiedView_Access := new TimeLastModifiedView;
   begin
      TimeLastModifiedView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TimeLastModifiedView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createTextNode (document, EntryData_Package.getInstance.TIMECREATED, This.getTimeLastModified.toString);
   end toXmlNode;

   function getTimeLastModified (This : in out TimeLastModifiedView) return TimeLastModified_Access is
   begin
        return This.timeLastModified;
   end getTimeLastModified;

   procedure setTimeLastModified (This : in out TimeLastModifiedView; timeLastModified_Param : access TimeLastModified'Class) is
      timeLastModified : TimeLastModified_Access := TimeLastModified_Access (timeLastModified_Param);
   begin
        This.timeLastModified := timeLastModified;
   end setTimeLastModified;

   procedure toXmlNode (This : in out TimeLastModifiedView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := TimeLastModifiedView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.time.modified.TimeLastModifiedView_Package;


