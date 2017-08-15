.class Lorg/telegram/ui/IdFinderActivity$C12762;
.super Ljava/lang/Object;
.source "IdFinderActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IdFinderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12762"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdFinderActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdFinderActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdFinderActivity$C12762;->this$0:Lorg/telegram/ui/IdFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/IdFinderActivity$C12762;->this$0:Lorg/telegram/ui/IdFinderActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/IdFinderActivity;->checkId()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
