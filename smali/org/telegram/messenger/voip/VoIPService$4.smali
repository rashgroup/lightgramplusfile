.class Lorg/telegram/messenger/voip/VoIPService$4;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$4;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sent debug logs, response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method
