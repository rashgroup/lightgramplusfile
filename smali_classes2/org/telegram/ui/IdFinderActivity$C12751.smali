.class Lorg/telegram/ui/IdFinderActivity$C12751;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "IdFinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IdFinderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12751"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdFinderActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdFinderActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdFinderActivity$C12751;->this$0:Lorg/telegram/ui/IdFinderActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12751;->this$0:Lorg/telegram/ui/IdFinderActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/IdFinderActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12751;->this$0:Lorg/telegram/ui/IdFinderActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/IdFinderActivity;->openChatOrProfile()V

    goto :goto_0
.end method
