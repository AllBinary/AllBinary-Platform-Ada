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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.time.modified.TimeLastModified_Package; use org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package_References;
with org.allbinary.business.time.Time_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package;

package body org.allbinary.business.time.modified.TimeLastModifiedView_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype TimeLastModified_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access;
   function "=" (Left, Right : TimeLastModified_Access) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array;
   function "=" (Left, Right : TimeLastModified_Access_Array) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access;
   function "=" (Left, Right : TimeLastModified_Access_Array_Access) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array_Access_Array is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access_Array;
   function "=" (Left, Right : TimeLastModified_Access_Array_Access_Array) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array_Access_Array_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeLastModified_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   procedure Initialize_Fields (This : in out TimeLastModifiedView'Class) is
   begin
      null;
      This.timeLastModified := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeLastModifiedView'Class; timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class) is
      timeLastModified : constant TimeLastModified_Access := TimeLastModified_Access (timeLastModified_Param);
   begin
      Initialize_Fields (This);
        TimeLastModifiedView'Class (This).setTimeLastModified (timeLastModified);
   end Initialize;

   function Create (timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class) return TimeLastModifiedView_Access is
      This : constant TimeLastModifiedView_Access := new TimeLastModifiedView;
   begin
      TimeLastModifiedView_Package.Initialize (This.all, timeLastModified_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TimeLastModifiedView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        TimeLastModifiedView'Class (This).setTimeLastModified (TimeLastModified_Package.Create (DomNodeHelper_Package.getTextNodeValue (node)));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return TimeLastModifiedView_Access is
      This : constant TimeLastModifiedView_Access := new TimeLastModifiedView;
   begin
      TimeLastModifiedView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TimeLastModifiedView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createTextNode (document, EntryData_Package.getInstance.TIMECREATED, TimeLastModifiedView'Class (This).getTimeLastModified.toString);
   end toXmlNode;

   function getTimeLastModified (This : in out TimeLastModifiedView) return TimeLastModified_Access is
   begin
        return This.timeLastModified;
   end getTimeLastModified;

   procedure setTimeLastModified (This : in out TimeLastModifiedView; timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class) is
      timeLastModified : constant TimeLastModified_Access := TimeLastModified_Access (timeLastModified_Param);
   begin
        This.timeLastModified := timeLastModified;
   end setTimeLastModified;

   procedure toXmlNode (This : in out TimeLastModifiedView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TimeLastModifiedView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.time.modified.TimeLastModifiedView_Package;


