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


package body admin.tags.BasketTag_Package is

   procedure Initialize_Fields (This : in out BasketTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.command := Null_Unbounded_String;
      This.storeName := Null_Unbounded_String;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasketTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasketTag_Access is
      This : constant BasketTag_Access := new BasketTag;
   begin
      BasketTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out BasketTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setStoreName (This : in out BasketTag; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   --  throws LicensingException
   function isBasketEmpty (This : in out BasketTag) return Boolean is
      anyType : Java_Object_Access;
      method : Method_Access;
      emptyBoolean : Boolean;
   begin
        begin
            anyType := BasketHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("isBasketEmpty"), null);
            emptyBoolean := Boolean (method.invoke (anyType, null));
            return emptyBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end isBasketEmpty;

   --  throws LicensingException
   function addItemToBasket (This : in out BasketTag) return Boolean is
      anyType : Java_Object_Access;
      method : Method_Access;
      emptyBoolean : Boolean;
      error : Unbounded_String;
   begin
        begin
            anyType := BasketRequestHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("addItemToBasket"), null);
            emptyBoolean := Boolean (method.invoke (anyType, null));
            return emptyBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end addItemToBasket;

   --  throws LicensingException
   function removeItemFromBasket (This : in out BasketTag) return Boolean is
      anyType : Java_Object_Access;
      method : Method_Access;
      emptyBoolean : Boolean;
      error : Unbounded_String;
   begin
        begin
            anyType := BasketRequestHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("removeItemFromBasket"), null);
            emptyBoolean := Boolean (method.invoke (anyType, null));
            return emptyBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end removeItemFromBasket;

   --  throws LicensingException
   function adjustBasket (This : in out BasketTag) return Boolean is
      anyType : Java_Object_Access;
      method : Method_Access;
      emptyBoolean : Boolean;
      error : Unbounded_String;
   begin
        begin
            anyType := BasketRequestHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("adjustBasket"), null);
            emptyBoolean := Boolean (method.invoke (anyType, null));
            return emptyBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end adjustBasket;

   --  throws JspTagException
   function doStartTag (This : in out BasketTag) return Integer is
   begin
        begin
            if (This.command) /= (Null_Unbounded_String) then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                This.propertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (This.storeName));
                if (Java_Compare_To (This.command, BasketData_Package.INSERT)) = (0) then
                    if not (BasketTag'Class (This).addItemToBasket) then
                        This.pageContext.getOut.println (To_Unbounded_String ("Item is not currently being sold.<p/>"));
                    end if;
                elsif (Java_Compare_To (This.command, BasketData_Package.DELETE)) = (0) then
                    BasketTag'Class (This).removeItemFromBasket;
                elsif (Java_Compare_To (This.command, BasketData_Package.ADJUST)) = (0) then
                    BasketTag'Class (This).adjustBasket;
                elsif (Java_Compare_To (This.command, BasketData_Package.ISEMPTY)) = (0) then
                    if BasketTag'Class (This).isBasketEmpty then
                        return This.EVAL_BODY_INCLUDE;
                    else
                        return SKIP_BODY;
                    end if;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.BasketTag_Package;


