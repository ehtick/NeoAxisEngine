#if !NO_UI_WEB_BROWSER
//
// DO NOT MODIFY! THIS IS AUTOGENERATED FILE!
//
namespace Internal.Xilium.CefGlue
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics;
    using System.Runtime.InteropServices;
    using Internal.Xilium.CefGlue.Interop;
    
    // Role: PROXY
    public sealed unsafe partial class CefPostDataElement : IDisposable
    {
        internal static CefPostDataElement FromNative(cef_post_data_element_t* ptr)
        {
            return new CefPostDataElement(ptr);
        }
        
        internal static CefPostDataElement FromNativeOrNull(cef_post_data_element_t* ptr)
        {
            if (ptr == null) return null;
            return new CefPostDataElement(ptr);
        }
        
        private cef_post_data_element_t* _self;
        
        private CefPostDataElement(cef_post_data_element_t* ptr)
        {
            if (ptr == null) throw new ArgumentNullException("ptr");
            _self = ptr;
        }
        
        ~CefPostDataElement()
        {
            if (_self != null)
            {
                Release();
                _self = null;
            }
        }
        
        public void Dispose()
        {
            if (_self != null)
            {
                Release();
                _self = null;
            }
            GC.SuppressFinalize(this);
        }
        
        internal void AddRef()
        {
            cef_post_data_element_t.add_ref(_self);
        }
        
        internal bool Release()
        {
            return cef_post_data_element_t.release(_self) != 0;
        }
        
        internal bool HasOneRef
        {
            get { return cef_post_data_element_t.has_one_ref(_self) != 0; }
        }
        
        internal cef_post_data_element_t* ToNative()
        {
            AddRef();
            return _self;
        }
    }
}

#endif