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


package body views.admin.payment.gateways.SelectExistingValidationView_Package is

   procedure Initialize_Fields (This : in out SelectExistingValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectExistingValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return SelectExistingValidationView_Access is
      This : constant SelectExistingValidationView_Access := new SelectExistingValidationView;
   begin
      SelectExistingValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out SelectExistingValidationView) return Boolean is
   begin
        return True;
   end isValid;

   function toValidationInfoDoc (This : in out SelectExistingValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out SelectExistingValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out SelectExistingValidationView) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("validationInfo")));
   end validationInfo;

   function toXmlDoc (This : in out SelectExistingValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function toXmlNode (This : in out SelectExistingValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toXmlNode;

   --  throws Exception
   function view (This : in out SelectExistingValidationView) return Unbounded_String is
   begin
        return SelectExistingView_Package.Create (This.getTransformInfoInterface).view;
   end view;

   procedure toValidationInfoNode (This : in out SelectExistingValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := SelectExistingValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out SelectExistingValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := SelectExistingValidationView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.payment.gateways.SelectExistingValidationView_Package;


