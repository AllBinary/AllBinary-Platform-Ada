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


with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package;

package body org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out GenericProfileDataWorkerType'Class) is
   begin
      null;
      This.name := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileDataWorkerType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        GenericProfileDataWorkerType'Class (This).setName (name);
        GenericProfileDataWorkerType_Package.hashMap.put (Java_Box (GenericProfileDataWorkerType'Class (This).getName), GenericProfileDataWorkerType_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (name : Unbounded_String) return GenericProfileDataWorkerType_Access is
      This : constant GenericProfileDataWorkerType_Access := new GenericProfileDataWorkerType;
   begin
      GenericProfileDataWorkerType_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out GenericProfileDataWorkerType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out GenericProfileDataWorkerType; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   --  throws Exception
   function toXmlNode (This : in out GenericProfileDataWorkerType; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createTextNode (document, GenericProfileDataWorkerData_Package.NAME, This.name);
        return node;
   end toXmlNode;

   function toString (This : in out GenericProfileDataWorkerType) return Unbounded_String is
   begin
        return To_Unbounded_String ("GenericProfileDataWorkerType: ") & GenericProfileDataWorkerType'Class (This).getName;
   end toString;

   function getInstance (node_Param : access Node_Package.Node'Class) return GenericProfileDataWorkerType_Access is
      node : constant Node_Access := Node_Access (node_Param);
      name : Unbounded_String;
   begin
        name := DomNodeHelper_Package.getTextNodeValue (node);
        return GenericProfileDataWorkerType_Access (GenericProfileDataWorkerType_Package.hashMap.get (Java_Box (name)));
   end getInstance;

   procedure toXmlNode (This : in out GenericProfileDataWorkerType; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericProfileDataWorkerType'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant GenericProfileDataWorkerType_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashMap := StdUtil_Package.getInstance.createHashMap;
   SAVED_CAPTURE := SavedCaptureGenericProfileDataWorkerType_Package.SAVED_CAPTURE;
   SCREEN_CAPTURE := GenericProfileDataWorkerType_Package.Create (To_Unbounded_String ("Screen ") & InputImageType_Package.CAPTURE.getName);
   COMPARISON := GenericProfileDataWorkerType_Package.Create (InputImageType_Package.COMPARISON.getName);
   MOTION := GenericProfileDataWorkerType_Package.Create (InputImageType_Package.MOTION.getName);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;


