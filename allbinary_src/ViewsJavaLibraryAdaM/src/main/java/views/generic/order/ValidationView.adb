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


with org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body views.generic_Id.order.ValidationView_Package is

   package OrderHistoryFactory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package;
   package OrderItemsEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out ValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        OrderView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ValidationView_Access is
      This : constant ValidationView_Access := new ValidationView;
   begin
      ValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out ValidationView) return Boolean is
      valid : Boolean;
      orderItems : OrderItemsEntity_Access;
   begin
        begin
            valid := True;
            if (This.order.isIdValid) = (False) then
                return False;
            else
                This.orderHistory := OrderHistoryFactory_Package.getInstance (This.order.getId);
                if ((This.orderHistory) = (null)) or else ((This.orderHistory.isValid) = (False)) then
                    return False;
                end if;
                orderItems := OrderItemsEntity_Package.Create;
                This.basketReview := orderItems.getBasketReview (This.order.getId);
                if ((This.basketReview) = (null)) or else ((This.basketReview.isValid) = (False)) then
                    return False;
                end if;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), ValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out ValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      orderItems : OrderItemsEntity_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (This.order.isIdValid) = (False) then
                stringBuffer.append (This.order.getIdValidationInfo);
            else
                This.orderHistory := OrderHistoryFactory_Package.getInstance (This.order.getId);
                if ((This.orderHistory) = (null)) or else ((This.orderHistory.isValid) = (False)) then
                    stringBuffer.append (To_Unbounded_String ("Order History data error for: "));
                    stringBuffer.append (This.order.getId);
                    stringBuffer.append (To_Unbounded_String ("<br />"));
                end if;
                orderItems := OrderItemsEntity_Package.Create;
                This.basketReview := orderItems.getBasketReview (This.order.getId);
                if (This.basketReview) = (null) then
                    stringBuffer.append (To_Unbounded_String ("Order Items data error - does not exist for: "));
                    stringBuffer.append (This.order.getId);
                    stringBuffer.append (To_Unbounded_String ("<br />"));
                elsif (This.basketReview.isValid) = (False) then
                    stringBuffer.append (To_Unbounded_String ("Order Items data error - not valid for: "));
                    stringBuffer.append (This.order.getId);
                    stringBuffer.append (To_Unbounded_String ("<br />"));
                end if;
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), ValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out ValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out ValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.order.ValidationView_Package;


