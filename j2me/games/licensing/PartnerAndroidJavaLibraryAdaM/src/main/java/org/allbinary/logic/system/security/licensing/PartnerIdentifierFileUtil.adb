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


package body org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package is

   procedure Initialize_Fields (This : in out PartnerIdentifierFileUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.FILE_NAME := To_Unbounded_String ("partner.txt");
   end Initialize_Fields;

   procedure Initialize (This : in out PartnerIdentifierFileUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PartnerIdentifierFileUtil_Access is
      This : constant PartnerIdentifierFileUtil_Access := new PartnerIdentifierFileUtil;
   begin
      PartnerIdentifierFileUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PartnerIdentifierFileUtil_Access is
   begin
        return PartnerIdentifierFileUtil_Package.instance;
   end getInstance;

   function get (This : in out PartnerIdentifierFileUtil) return Unbounded_String is
      resourceUtil : ResourceUtil_Access;
      inputStream : InputStream_Access;
      inputStreamReader : InputStreamReader_Access;
      chars : Character_Array_Access;
      size : Integer;
      partnerString : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            resourceUtil := ResourceUtil_Package.getInstance;
            inputStream := resourceUtil.getResourceAsStream (This.FILE_NAME);
            inputStreamReader := InputStreamReader_Package.Create (inputStream);
            chars := new Character_Array'(0 .. (30) - 1 => ASCII.NUL);
            size := inputStreamReader.read (chars);
            partnerString := StringUtil_Package.getInstance.EMPTY_STRING;
            if (size) > (0) then
                partnerString := Java_New_String (chars, 0, size);
            end if;
            inputStreamReader.close;
            return partnerString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, PartnerIdentifierFileUtil_Access'(This'Unchecked_Access), commonStrings.GET, e);
            return StringUtil_Package.getInstance.NULL_STRING;
                end;
        end;
   end get;

begin
   null;
   instance := PartnerIdentifierFileUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;


