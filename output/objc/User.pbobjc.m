// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: User.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import "User.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - UserRoot

@implementation UserRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - UserRoot_FileDescriptor

static GPBFileDescriptor *UserRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"Sample.Model"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - User

@implementation User

@dynamic id_p;
@dynamic name;
@dynamic avatar;
@dynamic address;
@dynamic mobile;
@dynamic ext, ext_Count;

typedef struct User__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSString *avatar;
  NSString *address;
  NSString *mobile;
  NSMutableDictionary *ext;
  int64_t id_p;
} User__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = User_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(User__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = User_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(User__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "avatar",
        .dataTypeSpecific.className = NULL,
        .number = User_FieldNumber_Avatar,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(User__storage_, avatar),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "address",
        .dataTypeSpecific.className = NULL,
        .number = User_FieldNumber_Address,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(User__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = User_FieldNumber_Mobile,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(User__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "ext",
        .dataTypeSpecific.className = NULL,
        .number = User_FieldNumber_Ext,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(User__storage_, ext),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[User class]
                                     rootClass:[UserRoot class]
                                          file:UserRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(User__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - UserList

@implementation UserList

@dynamic listArray, listArray_Count;
@dynamic page;
@dynamic limit;

typedef struct UserList__storage_ {
  uint32_t _has_storage_[1];
  int32_t page;
  int32_t limit;
  NSMutableArray *listArray;
} UserList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "listArray",
        .dataTypeSpecific.className = GPBStringifySymbol(User),
        .number = UserList_FieldNumber_ListArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(UserList__storage_, listArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "page",
        .dataTypeSpecific.className = NULL,
        .number = UserList_FieldNumber_Page,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(UserList__storage_, page),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "limit",
        .dataTypeSpecific.className = NULL,
        .number = UserList_FieldNumber_Limit,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(UserList__storage_, limit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[UserList class]
                                     rootClass:[UserRoot class]
                                          file:UserRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(UserList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
