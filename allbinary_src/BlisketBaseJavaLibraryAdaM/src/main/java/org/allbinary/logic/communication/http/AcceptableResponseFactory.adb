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


with org.allbinary.logic.communication.http.AcceptableResponse_Package; use org.allbinary.logic.communication.http.AcceptableResponse_Package;
with org.allbinary.logic.communication.http.AcceptableResponse_Package_References;
with org.allbinary.logic.communication.http.AcceptableResponse_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.http.AcceptableResponseFactory_Package is

   subtype AcceptableResponse_Access is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access;
   function "=" (Left, Right : AcceptableResponse_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponse_Package_References."=";
   subtype AcceptableResponse_Access_Array is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array;
   function "=" (Left, Right : AcceptableResponse_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponse_Package_References."=";
   subtype AcceptableResponse_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponse_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponse_Package_References."=";
   subtype AcceptableResponse_Access_Array_Access_Array is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array_Access_Array;
   function "=" (Left, Right : AcceptableResponse_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponse_Package_References."=";
   subtype AcceptableResponse_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponse_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponse_Package_References."=";
   procedure Initialize_Fields (This : in out AcceptableResponseFactory'Class) is
   begin
      null;
      This.HTML := AcceptableResponse_Package.Create (To_Unbounded_String ("text/html"), To_Unbounded_String ("html"), 0);
      This.WML := AcceptableResponse_Package.Create (To_Unbounded_String ("text/wml"), To_Unbounded_String ("wml"), 1);
      This.VXML := AcceptableResponse_Package.Create (To_Unbounded_String ("text/vxml"), To_Unbounded_String ("vxml"), 2);
   end Initialize_Fields;

   procedure Initialize (This : in out AcceptableResponseFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AcceptableResponseFactory_Access is
      This : constant AcceptableResponseFactory_Access := new AcceptableResponseFactory;
   begin
      AcceptableResponseFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AcceptableResponseFactory_Access is
   begin
        return AcceptableResponseFactory_Access (AcceptableResponseFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := AcceptableResponseFactory_Package.Create;

end org.allbinary.logic.communication.http.AcceptableResponseFactory_Package;


