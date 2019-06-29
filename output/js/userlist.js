/**
 * @fileoverview
 * @enhanceable
 * @suppress {messageConventions} JS Compiler reports an error if a variable or
 *     field starts with 'MSG_' and isn't a translatable message.
 * @public
 */
// GENERATED CODE -- DO NOT EDIT!

goog.provide('proto.Sample.Model.UserList');

goog.require('jspb.BinaryReader');
goog.require('jspb.BinaryWriter');
goog.require('jspb.Message');
goog.require('proto.Sample.Model.User');

/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.Sample.Model.UserList = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.Sample.Model.UserList.repeatedFields_, null);
};
goog.inherits(proto.Sample.Model.UserList, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.Sample.Model.UserList.displayName = 'proto.Sample.Model.UserList';
}

/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.Sample.Model.UserList.repeatedFields_ = [1];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.Sample.Model.UserList.prototype.toObject = function(opt_includeInstance) {
  return proto.Sample.Model.UserList.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.Sample.Model.UserList} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.Sample.Model.UserList.toObject = function(includeInstance, msg) {
  var f, obj = {
    listList: jspb.Message.toObjectList(msg.getListList(),
    proto.Sample.Model.User.toObject, includeInstance),
    page: jspb.Message.getFieldWithDefault(msg, 2, 0),
    limit: jspb.Message.getFieldWithDefault(msg, 3, 0)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.Sample.Model.UserList}
 */
proto.Sample.Model.UserList.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.Sample.Model.UserList;
  return proto.Sample.Model.UserList.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.Sample.Model.UserList} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.Sample.Model.UserList}
 */
proto.Sample.Model.UserList.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.Sample.Model.User;
      reader.readMessage(value,proto.Sample.Model.User.deserializeBinaryFromReader);
      msg.addList(value);
      break;
    case 2:
      var value = /** @type {number} */ (reader.readInt32());
      msg.setPage(value);
      break;
    case 3:
      var value = /** @type {number} */ (reader.readInt32());
      msg.setLimit(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.Sample.Model.UserList.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.Sample.Model.UserList.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.Sample.Model.UserList} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.Sample.Model.UserList.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getListList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.Sample.Model.User.serializeBinaryToWriter
    );
  }
  f = message.getPage();
  if (f !== 0) {
    writer.writeInt32(
      2,
      f
    );
  }
  f = message.getLimit();
  if (f !== 0) {
    writer.writeInt32(
      3,
      f
    );
  }
};


/**
 * repeated User list = 1;
 * @return {!Array<!proto.Sample.Model.User>}
 */
proto.Sample.Model.UserList.prototype.getListList = function() {
  return /** @type{!Array<!proto.Sample.Model.User>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.Sample.Model.User, 1));
};


/** @param {!Array<!proto.Sample.Model.User>} value */
proto.Sample.Model.UserList.prototype.setListList = function(value) {
  jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.Sample.Model.User=} opt_value
 * @param {number=} opt_index
 * @return {!proto.Sample.Model.User}
 */
proto.Sample.Model.UserList.prototype.addList = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.Sample.Model.User, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 */
proto.Sample.Model.UserList.prototype.clearListList = function() {
  this.setListList([]);
};


/**
 * optional int32 page = 2;
 * @return {number}
 */
proto.Sample.Model.UserList.prototype.getPage = function() {
  return /** @type {number} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/** @param {number} value */
proto.Sample.Model.UserList.prototype.setPage = function(value) {
  jspb.Message.setProto3IntField(this, 2, value);
};


/**
 * optional int32 limit = 3;
 * @return {number}
 */
proto.Sample.Model.UserList.prototype.getLimit = function() {
  return /** @type {number} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/** @param {number} value */
proto.Sample.Model.UserList.prototype.setLimit = function(value) {
  jspb.Message.setProto3IntField(this, 3, value);
};

