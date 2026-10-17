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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package is

   procedure Initialize_Fields (This : in out GenericProfileDataWorkerType'Class) is
   begin
      null;
      This.name := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileDataWorkerType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        GenericProfileDataWorkerType_Package.hashMap.put (This.getName, This'Unchecked_Access);
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
   function toXmlNode (This : in out GenericProfileDataWorkerType; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createTextNode (document, GenericProfileDataWorkerData_Package.NAME, This.name);
        return node;
   end toXmlNode;

   function toString (This : in out GenericProfileDataWorkerType) return Unbounded_String is
   begin
        return To_Unbounded_String ("GenericProfileDataWorkerType: ") & This.getName;
   end toString;

   function getInstance (node : Node_Access) return GenericProfileDataWorkerType_Access is
      name : Unbounded_String;
   begin
        name := DomNodeHelper_Package.getTextNodeValue (node);
        return GenericProfileDataWorkerType_Access (GenericProfileDataWorkerType_Package.hashMap.get (name));
   end getInstance;

   procedure toXmlNode (This : in out GenericProfileDataWorkerType; document : Document_Access) is
      Java_Result : constant Node_Access := GenericProfileDataWorkerType'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure getInstance (node : Node_Access) is
      Java_Result : constant GenericProfileDataWorkerType_Access := getInstance (node);
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


