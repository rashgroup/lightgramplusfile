.class Lorg/telegram/ui/SetNewPass$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SetNewPass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetNewPass;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetNewPass;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetNewPass;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SetNewPass$2;->this$0:Lorg/telegram/ui/SetNewPass;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SetNewPass$2;->this$0:Lorg/telegram/ui/SetNewPass;

    invoke-virtual {v0}, Lorg/telegram/ui/SetNewPass;->finishFragment()V

    return-void
.end method
