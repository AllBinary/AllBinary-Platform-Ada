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


package body org.allbinary.logic.communication.http.request.AbeHttpRequestInfo_Package is

   procedure Initialize_Fields (This : in out AbeHttpRequestInfo'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("AbeHttpRequestInfo");
      This.abeHttpRequestInfoData := AbeHttpRequestInfoData_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbeHttpRequestInfo'Class; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      stringUtil : StringUtil_Access;
   begin
      Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        This.httpUserAgent := stringUtil.getNonNull (Unbounded_String (hashMap.get (This.abeHttpRequestInfoData.HTTP_USER_AGENT)));
        This.remoteAddress := stringUtil.getNonNull (Unbounded_String (hashMap.get (This.abeHttpRequestInfoData.REMOTE_ADDRESS)));
        This.remoteHost := stringUtil.getNonNull (Unbounded_String (hashMap.get (This.abeHttpRequestInfoData.REMOTE_HOST)));
        This.remoteHostByAddr := stringUtil.getNonNull (Unbounded_String (hashMap.get (This.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS)));
        This.remotePort := stringUtil.getNonNull (Unbounded_String (hashMap.get (This.abeHttpRequestInfoData.REMOTE_PORT)));
        This.requestedFilePath := stringUtil.getNonNull (Unbounded_String (hashMap.get (This.abeHttpRequestInfoData.REQUEST_FILE_PATH)));
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class) return AbeHttpRequestInfo_Access is
      This : constant AbeHttpRequestInfo_Access := new AbeHttpRequestInfo;
   begin
      AbeHttpRequestInfo_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AbeHttpRequestInfo'Class; httpServletRequest_Param : access HttpServletRequest'Class) is
      httpServletRequest : HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
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
            key := Unbounded_String (enumuration.nextElement);
            value := httpServletRequest.getHeader (key);
            if ((Index (key, To_String (To_Unbounded_String ("user"))) - 1)) >= (0) then
                This.httpUserAgent := To_Unbounded_String ("key: ") & key & To_Unbounded_String (" value: ") & value;
            end if;
        end loop;
        This.remoteHostByAddr := stringUtil.EMPTY_STRING;
        This.remoteAddress := httpServletRequest.getRemoteAddr;
        This.remoteHost := httpServletRequest.getRemoteHost;
        This.requestedFilePath := httpServletRequest.getServletPath;
        This.remotePort := To_Unbounded_String (Java_Image (httpServletRequest.getRemotePort));
   end Initialize;

   function Create (httpServletRequest_Param : access HttpServletRequest'Class) return AbeHttpRequestInfo_Access is
      This : constant AbeHttpRequestInfo_Access := new AbeHttpRequestInfo;
   begin
      AbeHttpRequestInfo_Package.Initialize (This.all, httpServletRequest_Param);
      return This;
   end Create;

   function toHashMap (This : in out AbeHttpRequestInfo) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (This.abeHttpRequestInfoData.HTTP_USER_AGENT, This.httpUserAgent);
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_ADDRESS, This.remoteAddress);
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_HOST, This.remoteHost);
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS, This.remoteHostByAddr);
        hashMap.put (This.abeHttpRequestInfoData.REMOTE_PORT, This.remotePort);
        hashMap.put (This.abeHttpRequestInfoData.REQUEST_FILE_PATH, This.requestedFilePath);
        return hashMap;
   end toHashMap;

   function toVector (This : in out AbeHttpRequestInfo) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
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


