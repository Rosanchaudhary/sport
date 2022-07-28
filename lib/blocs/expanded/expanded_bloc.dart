// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'expanded_event.dart';
part 'expanded_state.dart';

class ExpandedBloc extends Bloc<ExpandedEvent, ExpandedState> {
  ExpandedBloc() : super(ExpandedState.initial()) {
    on<SetExpanded>((event, emit) {
      emit(state.copyWith(expanded: !state.expanded));
    });
  }
}
