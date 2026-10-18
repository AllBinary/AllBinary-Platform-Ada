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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with admin.taghelpers.InventoryItemViewParentTagHelper_Package; use admin.taghelpers.InventoryItemViewParentTagHelper_Package;

package body admin.taghelpers.MultipartRequestParamForwardHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out MultipartRequestParamForwardHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MultipartRequestParamForwardHelper'Class; parentHelperTag_Param : access HelperTag_Package.HelperTag'Class; page : Unbounded_String; command : Unbounded_String; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      parentHelperTag : constant HelperTag_Access := HelperTag_Access (parentHelperTag_Param);
      paramVector : constant BasicArrayList_Access := BasicArrayList_Access (paramVector_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      Initialize_Fields (This);
        This.pageContext := pageContext;
        This.page := page;
        This.command := command;
        This.paramVector := paramVector;
        This.requestMapInterface := RequestMapInterface_Access (InventoryItemViewParentTagHelper_Package.getInstance.getRequestMapInterface (parentHelperTag));
   end Initialize;

   function Create (parentHelperTag_Param : access HelperTag_Package.HelperTag'Class; page : Unbounded_String; command : Unbounded_String; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return MultipartRequestParamForwardHelper_Access is
      This : constant MultipartRequestParamForwardHelper_Access := new MultipartRequestParamForwardHelper;
   begin
      MultipartRequestParamForwardHelper_Package.Initialize (This.all, parentHelperTag_Param, page, command, paramVector_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   procedure forward (This : in out MultipartRequestParamForwardHelper) is
      params : Unbounded_String;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            if MultipartRequestParamForwardHelper'Class (This).shouldForward then
                params := MultipartRequestParamForwardHelper'Class (This).getParams;
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (This.page);
                stringBuffer.append (params);
                This.pageContext.forward (stringBuffer.toString);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, MultipartRequestParamForwardHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("forward()"), e);
            end if;
                end;
        end;
   end forward;

   function getParams (This : in out MultipartRequestParamForwardHelper) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      AMP : Unbounded_String;
      QUESTION : Unbounded_String;
      EQUALS : Unbounded_String;
      hashMap : HashMap_Access;
      stringBuffer : StringMaker_Access;
      size : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        AMP := commonSeps.AMPERSAND;
        QUESTION := commonSeps.QUESTION;
        EQUALS := commonSeps.EQUALS;
        hashMap := This.requestMapInterface.getRequestHashMap;
        stringBuffer := StringMaker_Package.Create;
        size := This.paramVector.size;
        for index in 0 .. (size) - 1 loop
            key := Java_Unbox (This.paramVector.get (index));
            value := Java_Unbox (hashMap.get (Java_Box (key)));
            if (index) /= (0) then
                stringBuffer.append (AMP);
            else
                stringBuffer.append (QUESTION);
            end if;
            stringBuffer.append (key);
            stringBuffer.append (EQUALS);
            stringBuffer.append (value);
        end loop;
        return stringBuffer.toString;
   end getParams;

   function shouldForward (This : in out MultipartRequestParamForwardHelper) return Boolean is
      hashMap : HashMap_Access;
      requestCommand : Unbounded_String;
   begin
        hashMap := This.requestMapInterface.getRequestHashMap;
        requestCommand := Java_Unbox (hashMap.get (GLOBALS2_Package.ADMINCOMMAND));
        if (StringValidationUtil_Package.getInstance.isEmpty (This.command)) or else (((not (StringValidationUtil_Package.getInstance.isEmpty (requestCommand))) and then ((Java_Compare_To (This.command, requestCommand)) = (0)))) then
            return True;
        end if;
        return False;
   end shouldForward;

end admin.taghelpers.MultipartRequestParamForwardHelper_Package;


