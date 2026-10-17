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


package body admin.taghelpers.MultipartRequestParamForwardHelper_Package is

   procedure Initialize_Fields (This : in out MultipartRequestParamForwardHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MultipartRequestParamForwardHelper'Class; parentHelperTag : HelperTag_Access; page : Unbounded_String; command : Unbounded_String; paramVector : BasicArrayList_Access; pageContext : PageContext_Access) is
   begin
      Initialize_Fields (This);
        This.pageContext := pageContext;
        This.page := page;
        This.command := command;
        This.paramVector := paramVector;
        This.requestMapInterface := InventoryItemViewParentTagHelper_Package.getInstance.getRequestMapInterface (parentHelperTag);
   end Initialize;

   function Create (parentHelperTag : HelperTag_Access; page : Unbounded_String; command : Unbounded_String; paramVector : BasicArrayList_Access; pageContext : PageContext_Access) return MultipartRequestParamForwardHelper_Access is
      This : constant MultipartRequestParamForwardHelper_Access := new MultipartRequestParamForwardHelper;
   begin
      Initialize (This.all, parentHelperTag, page, command, paramVector, pageContext);
      return This;
   end Create;

   --  throws Exception
   procedure forward (This : in out MultipartRequestParamForwardHelper) is
      params : Unbounded_String;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            if This.shouldForward then
                params := This.getParams;
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("forward()"), e);
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
            key := Unbounded_String (This.paramVector.get (index));
            value := Unbounded_String (hashMap.get (key));
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
        requestCommand := Unbounded_String (hashMap.get (GLOBALS2.ADMINCOMMAND));
        if (StringValidationUtil_Package.getInstance.isEmpty (This.command)) or else (((not (StringValidationUtil_Package.getInstance.isEmpty (requestCommand))) and then ((This.command.compareTo (requestCommand)) = (0)))) then
            return True;
        end if;
        return False;
   end shouldForward;

   procedure getParams (This : in out MultipartRequestParamForwardHelper) is
      Java_Result : constant Unbounded_String := MultipartRequestParamForwardHelper'Class (This).getParams;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getParams;

   procedure shouldForward (This : in out MultipartRequestParamForwardHelper) is
      Java_Result : constant Boolean := MultipartRequestParamForwardHelper'Class (This).shouldForward;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldForward;

end admin.taghelpers.MultipartRequestParamForwardHelper_Package;


