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


with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out AbeHttpRequestInfo'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("AbeHttpRequestInfo");
      This.abeHttpRequestInfoData := AbeHttpRequestInfoData_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbeHttpRequestInfo'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      stringUtil : StringUtil_Access;
   begin
      Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        This.httpUserAgent := stringUtil.getNonNull (Java_Unbox (hashMap.get (This.abeHttpRequestInfoData.HTTP_USER_AGENT)));
        This.remoteAddress := stringUtil.getNonNull (Java_Unbox (hashMap.get (This.abeHttpRequestInfoData.REMOTE_ADDRESS)));
        This.remoteHost := stringUtil.getNonNull (Java_Unbox (hashMap.get (This.abeHttpRequestInfoData.REMOTE_HOST)));
        This.remoteHostByAddr := stringUtil.getNonNull (Java_Unbox (hashMap.get (This.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS)));
        This.remotePort := stringUtil.getNonNull (Java_Unbox (hashMap.get (This.abeHttpRequestInfoData.REMOTE_PORT)));
        This.requestedFilePath := stringUtil.getNonNull (Java_Unbox (hashMap.get (This.abeHttpRequestInfoData.REQUEST_FILE_PATH)));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AbeHttpRequestInfo_Access is
      This : constant AbeHttpRequestInfo_Access := new AbeHttpRequestInfo;
   begin
      AbeHttpRequestInfo_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AbeHttpRequestInfo'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      stringUtil : StringUtil_Access;
      enumuration : Enumeration_Access;
      key : Unbounded_String;
      value : Unbounded_String;
   begin
      Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        This.httpUserAgent := stringUtil.EMPTY_STRING;
        enumuration := httpServletRequest.getHeaderNames;
        while enumuration.hasMoreElements loop
            key := Java_Unbox (enumuration.nextElement);
            value := httpServletRequest.getHeader (key);
            if (Java_Index_Of (key, Java_Image (To_Unbounded_String ("user")))) >= (0) then
                This.httpUserAgent := To_Unbounded_String ("key: ") & key & To_Unbounded_String (" value: ") & value;
            end if;
        end loop;
        This.remoteHostByAddr := stringUtil.EMPTY_STRING;
        This.remoteAddress := httpServletRequest.getRemoteAddr;
        This.remoteHost := httpServletRequest.getRemoteHost;
        This.requestedFilePath := httpServletRequest.getServletPath;
        This.remotePort := To_Unbounded_String (Java_Image (httpServletRequest.getRemotePort));
   end Initialize;

   function Create (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AbeHttpRequestInfo_Access is
      This : constant AbeHttpRequestInfo_Access := new AbeHttpRequestInfo;
   begin
      AbeHttpRequestInfo_Package.Initialize (This.all, httpServletRequest_Param);
      return This;
   end Create;

   function toHashMap (This : in out AbeHttpRequestInfo) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (This.abeHttpRequestInfoData.HTTP_USER_AGENT, Java_Box (This.httpUserAgent));
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_ADDRESS, Java_Box (This.remoteAddress));
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_HOST, Java_Box (This.remoteHost));
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS, Java_Box (This.remoteHostByAddr));
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_PORT, Java_Box (This.remotePort));
        hashMap.put (This.abeHttpRequestInfoData.REQUEST_FILE_PATH, Java_Box (This.requestedFilePath));
        return hashMap;
   end toHashMap;

   function toVector (This : in out AbeHttpRequestInfo) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (This.httpUserAgent);
        vector.add (This.remoteAddress);
        vector.add (This.remoteHost);
        vector.add (This.remoteHostByAddr);
        vector.add (This.remotePort);
        vector.add (This.requestedFilePath);
        return vector;
   end toVector;

   function toString (This : in out AbeHttpRequestInfo) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (This.NAME).append (This.commonSeps.COLON_SEP).append (This.abeHttpRequestInfoData.HTTP_USER_AGENT).append (This.commonSeps.COLON_SEP).append (This.httpUserAgent).append (This.commonSeps.SPACE).append (This.abeHttpRequestInfoData.REMOTE_ADDRESS).append (This.commonSeps.COLON_SEP).append (This.remoteAddress).append (This.commonSeps.SPACE).append (This.abeHttpRequestInfoData.REMOTE_HOST).append (This.commonSeps.COLON_SEP).append (This.remoteHost).append (This.commonSeps.SPACE).append (This.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS).append (This.commonSeps.COLON_SEP).append (This.remoteHostByAddr).append (This.commonSeps.SPACE).append (This.abeHttpRequestInfoData.REMOTE_PORT).append (This.commonSeps.COLON_SEP).append (This.remotePort).append (This.commonSeps.SPACE).append (This.abeHttpRequestInfoData.REQUEST_FILE_PATH).append (This.commonSeps.COLON_SEP).append (This.requestedFilePath).toString;
   end toString;

end org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package;


