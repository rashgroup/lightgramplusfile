.class Lorg/telegram/ui/tools/b$1;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$1;->b:Lorg/telegram/ui/tools/b;

    iput-object p2, p0, Lorg/telegram/ui/tools/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/tools/b$1$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/tools/b$1$1;-><init>(Lorg/telegram/ui/tools/b$1;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
