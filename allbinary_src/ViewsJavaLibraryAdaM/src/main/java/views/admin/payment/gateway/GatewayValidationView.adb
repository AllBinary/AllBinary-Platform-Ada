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


package body views.admin.payment.gateway.GatewayValidationView_Package is

   procedure Initialize_Fields (This : in out GatewayValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GatewayValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GatewayValidationView_Access is
      This : constant GatewayValidationView_Access := new GatewayValidationView;
   begin
      GatewayValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out GatewayValidationView) return Boolean is
   begin
        return True;
   end isValid;

   function toValidationInfoDoc (This : in out GatewayValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out GatewayValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out GatewayValidationView) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("validationInfo")));
        return Null_Unbounded_String;
   end validationInfo;

   function toXmlDoc (This : in out GatewayValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function toXmlNode (This : in out GatewayValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toXmlNode;

   --  throws Exception
   function view (This : in out GatewayValidationView) return Unbounded_String is
   begin
        return GatewayView_Package.Create (GatewayValidationView'Class (This).getTransformInfoInterface).view;
   end view;

   procedure toValidationInfoNode (This : in out GatewayValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GatewayValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out GatewayValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GatewayValidationView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.payment.gateway.GatewayValidationView_Package;


