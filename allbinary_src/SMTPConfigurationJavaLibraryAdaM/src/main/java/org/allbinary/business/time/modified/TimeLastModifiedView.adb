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


   procedure Initialize (This : in out TimeLastModifiedView'Class; timeLastModified : TimeLastModified_Access) is
   begin
      Initialize_Fields (This);
        This.setTimeLastModified (timeLastModified);
   end Initialize;

   function Create (timeLastModified : TimeLastModified_Access) return TimeLastModifiedView_Access is
      This : constant TimeLastModifiedView_Access := new TimeLastModifiedView;
   begin
      TimeLastModifiedView_Package.Initialize (This.all, timeLastModified);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TimeLastModifiedView'Class; node : Node_Access) is
   begin
      Initialize_Fields (This);
        This.setTimeLastModified (TimeLastModified_Package.Create (DomNodeHelper_Package.getTextNodeValue (node)));
   end Initialize;

   function Create (node : Node_Access) return TimeLastModifiedView_Access is
      This : constant TimeLastModifiedView_Access := new TimeLastModifiedView;
   begin
      TimeLastModifiedView_Package.Initialize (This.all, node);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TimeLastModifiedView; document : Document_Access) return Node_Access is
   begin
        return ModDomHelper_Package.createTextNode (document, EntryData_Package.getInstance.TIMECREATED, This.getTimeLastModified.toString);
   end toXmlNode;

   function getTimeLastModified (This : in out TimeLastModifiedView) return TimeLastModified_Access is
   begin
        return This.timeLastModified;
   end getTimeLastModified;

   procedure setTimeLastModified (This : in out TimeLastModifiedView; timeLastModified : TimeLastModified_Access) is
   begin
        This.timeLastModified := timeLastModified;
   end setTimeLastModified;

   procedure toXmlNode (This : in out TimeLastModifiedView; document : Document_Access) is
      Java_Result : constant Node_Access := TimeLastModifiedView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.time.modified.TimeLastModifiedView_Package;


