--  Generated Code Do Not Modify


package body org.apache.xmlrpc.XmlRpcClient_Package is

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
      Initialize (This.all, url);
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
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access) return Java_Object_Access is
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end execute;

   --  throws XmlRpcException, IOException
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access; cryptInterface : CryptInterface_Access) return Java_Object_Access is
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end execute;

   procedure getURL (This : in out XmlRpcClient) is
      Java_Result : constant URL_Access := XmlRpcClient'Class (This).getURL;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getURL;

   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access) is
      Java_Result : constant Java_Object_Access := XmlRpcClient'Class (This).execute (method, params);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end execute;

   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access; cryptInterface : CryptInterface_Access) is
      Java_Result : constant Java_Object_Access := XmlRpcClient'Class (This).execute (method, params, cryptInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end execute;

end org.apache.xmlrpc.XmlRpcClient_Package;


