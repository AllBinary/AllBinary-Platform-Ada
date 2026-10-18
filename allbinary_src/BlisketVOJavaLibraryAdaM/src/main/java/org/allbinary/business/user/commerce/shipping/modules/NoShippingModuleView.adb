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


with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;

package body org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package is

   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out NoShippingModuleView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NoShippingModuleView'Class) is
   begin
      NoShippingModule_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoShippingModuleView_Access is
      This : constant NoShippingModuleView_Access := new NoShippingModuleView;
   begin
      NoShippingModuleView_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out NoShippingModuleView) return Boolean is
   begin
        return null;
   end isValid;

   function toValidationInfoDoc (This : in out NoShippingModuleView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function toXmlDoc (This : in out NoShippingModuleView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function toXmlNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      shippingMethodNode : Node_Access;
   begin
        begin
            shippingMethodNode := document.createElement (ShippingMethodData_Package.NAME);
            shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodData_Package.NAME, NoShippingModuleView'Class (This).getName));
            shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodData_Package.DESCRIPTION, NoShippingModuleView'Class (This).getDescription));
            return shippingMethodNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, NoShippingModuleView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   function validationInfo (This : in out NoShippingModuleView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   function view (This : in out NoShippingModuleView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end view;

   procedure toValidationInfoNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := NoShippingModuleView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := NoShippingModuleView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;


