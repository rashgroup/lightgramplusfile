.class public Lorg/telegram/messenger/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# static fields
.field public static allowScreenCapture:Z

.field public static appLocked:Z

.field public static autoLockIn:I

.field public static blockedUsersLoaded:Z

.field public static contactsHash:Ljava/lang/String;

.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public static draftsLoaded:Z

.field public static isRobot:Z

.field public static isWaitingForPasscodeEnter:Z

.field public static lastBroadcastId:I

.field public static lastContactsSyncTime:I

.field public static lastHintsSyncTime:I

.field public static lastLocalId:I

.field public static lastPauseTime:I

.field public static lastSendMessageId:I

.field public static lastUpdateVersion:Ljava/lang/String;

.field public static migrateOffsetAccess:J

.field public static migrateOffsetChannelId:I

.field public static migrateOffsetChatId:I

.field public static migrateOffsetDate:I

.field public static migrateOffsetId:I

.field public static migrateOffsetUserId:I

.field public static notificationsConverted:Z

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static pinnedDialogsLoaded:Z

.field public static pushString:Ljava/lang/String;

.field public static registeredForPush:Z

.field public static saveIncomingPhotos:Z

.field private static final sync:Ljava/lang/Object;

.field public static tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

.field public static useFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, -0x33450

    const/4 v2, 0x1

    const/4 v1, -0x1

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    sput v3, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    sput v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v1, v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    sput-object v1, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/16 v4, 0x10

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    const/16 v5, 0x10

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    array-length v3, v2

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/16 v4, 0x10

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    const/16 v5, 0x10

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    array-length v3, v2

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearConfig()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const v0, -0x33450

    sput v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isRobot:Z

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    sput v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x14370

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method public static getClientUserId()I
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNewMessageId()I
    .locals 3

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    sget v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isClientActivated()Z
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadConfig()V
    .locals 11

    const/4 v8, -0x1

    const/4 v5, 0x1

    const v6, -0x33450

    const/4 v2, 0x0

    sget-object v3, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "user.dat"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v0}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    if-ne v2, v5, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    sput v2, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/UserConfig$1;

    invoke-direct {v4, v0}, Lorg/telegram/messenger/UserConfig$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    sget v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    if-le v2, v6, :cond_2

    const v2, -0x33450

    sput v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    :cond_2
    sget v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    if-le v2, v6, :cond_3

    const v2, -0x33450

    sput v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/UserConfig$2;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/UserConfig$2;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_5
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "userconfing"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "registeredForPush"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string/jumbo v4, "pushString2"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    const-string/jumbo v4, "lastSendMessageId"

    const v5, -0x33450

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const-string/jumbo v4, "lastLocalId"

    const v5, -0x33450

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const-string/jumbo v4, "contactsHash"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const-string/jumbo v4, "saveIncomingPhotos"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    :try_start_5
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "userconfing"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "registeredForPush"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string/jumbo v1, "pushString2"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    const-string/jumbo v1, "lastSendMessageId"

    const v4, -0x33450

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const-string/jumbo v1, "lastLocalId"

    const v4, -0x33450

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const-string/jumbo v1, "contactsHash"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const-string/jumbo v1, "saveIncomingPhotos"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    const-string/jumbo v1, "lastBroadcastId"

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const-string/jumbo v1, "blockedUsersLoaded"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    const-string/jumbo v1, "passcodeHash1"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    const-string/jumbo v1, "appLocked"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    const-string/jumbo v1, "passcodeType"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const-string/jumbo v1, "autoLockIn"

    const/16 v4, 0xe10

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const-string/jumbo v1, "lastPauseTime"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    const-string/jumbo v1, "useFingerprint"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    const-string/jumbo v1, "lastUpdateVersion2"

    const-string/jumbo v4, "3.5"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    const-string/jumbo v1, "lastContactsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    const v5, 0x14370

    sub-int/2addr v4, v5

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    const-string/jumbo v1, "lastHintsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    const v5, 0x15f90

    sub-int/2addr v4, v5

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    const-string/jumbo v1, "draftsLoaded"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    const-string/jumbo v1, "notificationsConverted"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    const-string/jumbo v1, "allowScreenCapture"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    const-string/jumbo v1, "pinnedDialogsLoaded"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    const-string/jumbo v1, "isRobot"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->isRobot:Z

    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x258

    sub-long/2addr v4, v6

    long-to-int v1, v4

    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    :cond_7
    const-string/jumbo v1, "migrateOffsetId"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sget v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    if-eq v1, v8, :cond_8

    const-string/jumbo v1, "migrateOffsetDate"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    const-string/jumbo v1, "migrateOffsetUserId"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    const-string/jumbo v1, "migrateOffsetChatId"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    const-string/jumbo v1, "migrateOffsetChannelId"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    const-string/jumbo v1, "migrateOffsetAccess"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    :cond_8
    const-string/jumbo v1, "tmpPassword"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_9
    const-string/jumbo v1, "user"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_a
    const-string/jumbo v1, "passcodeSalt"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    :goto_2
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_4

    :try_start_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "SoundDefault"

    const v6, 0x7f080510

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/16 v8, 0xb4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v10, "sound_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_e
    :try_start_8
    const-string/jumbo v10, "vibrate_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v10, "priority_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v10, "color_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v10, "smart_max_count_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v10, "smart_delay_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move v0, v2

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "custom_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4
.end method

.method public static saveConfig(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    return-void
.end method

.method public static saveConfig(ZLjava/io/File;)V
    .locals 6

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "userconfing"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v0, "registeredForPush"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "pushString2"

    sget-object v3, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastSendMessageId"

    sget v3, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastLocalId"

    sget v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "contactsHash"

    sget-object v3, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "saveIncomingPhotos"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastBroadcastId"

    sget v3, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "blockedUsersLoaded"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "passcodeHash1"

    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "passcodeSalt"

    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v0, v0

    if-lez v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "appLocked"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "passcodeType"

    sget v3, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "autoLockIn"

    sget v3, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastPauseTime"

    sget v3, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastUpdateVersion2"

    sget-object v3, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastContactsSyncTime"

    sget v3, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "useFingerprint"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "lastHintsSyncTime"

    sget v3, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "draftsLoaded"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "notificationsConverted"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "allowScreenCapture"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "pinnedDialogsLoaded"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "isRobot"

    sget-boolean v3, Lorg/telegram/messenger/UserConfig;->isRobot:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "migrateOffsetId"

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "migrateOffsetDate"

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "migrateOffsetUserId"

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "migrateOffsetChatId"

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "migrateOffsetChannelId"

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "migrateOffsetAccess"

    sget-wide v4, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tmpPassword"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :goto_1
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_5

    if-eqz p0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    sget-object v3, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_1
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "tmpPassword"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :try_start_4
    const-string/jumbo v0, "user"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
