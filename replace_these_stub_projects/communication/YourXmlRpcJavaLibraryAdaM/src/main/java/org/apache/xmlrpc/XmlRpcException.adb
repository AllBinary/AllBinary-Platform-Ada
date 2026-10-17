--  Generated Code Do Not Modify


package body org.apache.xmlrpc.XmlRpcException_Package is

   procedure Initialize_Fields (This : in out XmlRpcException'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlRpcException'Class; code : Integer; message : Unbounded_String) is
   begin
        Exception_Package.Initialize (This, message);
   end Initialize;

   function Create (code : Integer; message : Unbounded_String) return XmlRpcException_Access is
      This : constant XmlRpcException_Access := new XmlRpcException;
   begin
      XmlRpcException_Package.Initialize (This.all, code, message);
      return This;
   end Create;

end org.apache.xmlrpc.XmlRpcException_Package;


