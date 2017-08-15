.class Lorg/telegram/tgnet/ConnectionsManager$1$1;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegateInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/tgnet/ConnectionsManager$1;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IILjava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v2, v2, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/TLObject;->deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iput p4, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "java received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$1$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    if-eqz p3, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v3, v3, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
