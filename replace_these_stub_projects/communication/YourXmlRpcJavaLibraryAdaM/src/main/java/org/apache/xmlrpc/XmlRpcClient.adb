--  Generated Code Do Not Modify


with java.net.URL_Package; use java.net.URL_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.apache.xmlrpc.XmlRpcException_Package;

package body org.apache.xmlrpc.XmlRpcClient_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   function "=" (Left, Right : CryptInterface_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   procedure Initialize_Fields (This : in out XmlRpcClient'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcClient'Class; url : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.url := URL_Package.Create (url);
   end Initialize;

   function Create (url : Unbounded_String) return XmlRpcClient_Access is
      This : constant XmlRpcClient_Access := new XmlRpcClient;
   begin
      XmlRpcClient_Package.Initialize (This.all, url);
      return This;
   end Create;

   function getURL (This : in out XmlRpcClient) return URL_Access is
   begin
        return This.url;
   end getURL;

   procedure setBasicAuthentication (This : in out XmlRpcClient; user : Unbounded_String; password : Unbounded_String) is
   begin
        null;
   end setBasicAuthentication;

   --  throws XmlRpcException, IOException
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access is
      params : constant BasicArrayList_Access := BasicArrayList_Access (params_Param);
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end execute;

   --  throws XmlRpcException, IOException
   function executeWithCrypt (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access is
      params : constant BasicArrayList_Access := BasicArrayList_Access (params_Param);
      cryptInterface : constant CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end executeWithCrypt;

   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcClient'Class (This).execute (method => method, params_Param => params_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end execute;

   procedure executeWithCrypt (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant Java_Object_Access := XmlRpcClient'Class (This).executeWithCrypt (method => method, params_Param => params_Param, cryptInterface_Param => cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end executeWithCrypt;

end org.apache.xmlrpc.XmlRpcClient_Package;


