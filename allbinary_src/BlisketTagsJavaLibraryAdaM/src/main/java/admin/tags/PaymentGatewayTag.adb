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


package body admin.tags.PaymentGatewayTag_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (PaymentGatewayHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (PaymentGatewayHelperFactory_Package.Create);
   end Initialize;

   function Create return PaymentGatewayTag_Access is
      This : constant PaymentGatewayTag_Access := new PaymentGatewayTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException, Exception
   function process (This : in out PaymentGatewayTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
   begin
        begin
            anyType := PaymentGatewayHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (This.commonStrings.PROCESS, null);
            result := Unbounded_String (method.invoke (anyType, null));
            return result;
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("LicensingException"), This'Unchecked_Access, This.commonStrings.PROCESS, e);
            Java_Throw (e);
        end;
   end process;

   --  throws JspTagException
   function doStartTag (This : in out PaymentGatewayTag) return Integer is
      output : Unbounded_String;
   begin
        begin
            if This.isEnabled then
                if (((This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR)) = (0)) or else ((This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEORDERANDEVALBODY)) = (0))) or else ((This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR)) = (0)) then
                    output := This.process;
                    begin
                        This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                    end;
                    if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR)) = (0) then
                        return This.SKIP_BODY;
                    else
                        return This.EVAL_BODY_INCLUDE;
                    end if;
                else
                    return TableTag (This).doStartTag;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when e : others =>
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
        end;
   end doStartTag;

   procedure process (This : in out PaymentGatewayTag) is
      Java_Result : constant Unbounded_String := PaymentGatewayTag'Class (This).process;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

   procedure doStartTag (This : in out PaymentGatewayTag) is
      Java_Result : constant Integer := PaymentGatewayTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.PaymentGatewayTag_Package;


