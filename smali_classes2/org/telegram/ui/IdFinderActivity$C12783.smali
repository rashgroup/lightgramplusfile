.class Lorg/telegram/ui/IdFinderActivity$C12783;
.super Ljava/lang/Object;
.source "IdFinderActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IdFinderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12783"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IdFinderActivity$C12783$C12771;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdFinderActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdFinderActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdFinderActivity$C12783;->this$0:Lorg/telegram/ui/IdFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/IdFinderActivity$C12783$C12771;-><init>(Lorg/telegram/ui/IdFinderActivity$C12783;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
